<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductSite;
use Validator;
use Illuminate\Validation\Rule;

class ProductSiteController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productSites = ProductSite::where("company_id",company_id())
                                   ->orderBy("id","desc")->get();
        return view('backend.accounting.general_settings.product_site.list',compact('productSites'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
		if( ! $request->ajax()){
		   return view('backend.accounting.general_settings.product_site.create');
		}else{
           return view('backend.accounting.general_settings.product_site.modal.create');
		}
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			'store_name' => 'required|max:191',
		]);

		if ($validator->fails()) {
			if($request->ajax()){
			    return response()->json(['result'=>'error','message'=>$validator->errors()->all()]);
			}else{
				return redirect('product_sites/create')
							->withErrors($validator)
							->withInput();
			}
		}



        $productSite= new ProductSite();
	    $productSite->unit_name = $request->input('site_name');
	    $productSite->company_id = company_id();

        $productSite->save();

		if(! $request->ajax()){
           return redirect('product_sites/create')->with('success', _lang('Saved sucessfully'));
        }else{
		   return response()->json(['result'=>'success','action'=>'store','message'=>_lang('Saved sucessfully'),'data'=>$productSite]);
		}

   }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,$id)
    {
        $productSite = ProductSite::where("id",$id)->where("company_id",company_id())->first();
		if(! $request->ajax()){
		   return view('backend.accounting.general_settings.product_site.edit',compact('productSite','id'));
		}else{
           return view('backend.accounting.general_settings.product_site.modal.edit',compact('productSite','id'));
		}

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			'site_name' => 'required|max:191',
		]);

		if ($validator->fails()) {
			if($request->ajax()){
			    return response()->json(['result'=>'error','message'=>$validator->errors()->all()]);
			}else{
				return redirect()->route('product_sites.edit', $id)
							->withErrors($validator)
							->withInput();
			}
		}



        $productSite = ProductSite::where("id",$id)->where("company_id",company_id())->first();
		$productSite->unit_name = $request->input('unit_name');
	    $productSite->company_id = company_id();

        $productSite->save();

		if(! $request->ajax()){
           return redirect('product_units')->with('success', _lang('Updated sucessfully'));
        }else{
		   return response()->json(['result'=>'success','action'=>'update', 'message'=>_lang('Updated sucessfully'),'data'=>$productSite]);
		}

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $productSite = ProductSite::where("id",$id)->where("company_id",company_id());
        $productSite->delete();
        return redirect('product_units')->with('success',_lang('Deleted sucessfully'));
    }
}
