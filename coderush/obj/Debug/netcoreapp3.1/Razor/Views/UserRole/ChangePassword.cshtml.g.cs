#pragma checksum "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\UserRole\ChangePassword.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "201e1772917094effeae220ad4c0d083096eaca9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_UserRole_ChangePassword), @"mvc.1.0.view", @"/Views/UserRole/ChangePassword.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using coderush;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using coderush.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using coderush.Models.AccountViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using coderush.Models.ManageViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\_ViewImports.cshtml"
using coderush.Pages;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"201e1772917094effeae220ad4c0d083096eaca9", @"/Views/UserRole/ChangePassword.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f9ac69d2a6197d05847cf2439b90d37e9c3db3e0", @"/Views/_ViewImports.cshtml")]
    public class Views_UserRole_ChangePassword : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 2 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\UserRole\ChangePassword.cshtml"
  
    ViewData["Title"] = "Change Password";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<!-- Content Wrapper. Contains page content -->
<div class=""content-wrapper"">

    <!-- Main content -->
    <section class=""content"">
        <!-- Default box -->
        <div class=""box"">
            <div class=""box-header with-border"">
                <h3 class=""box-title text-primary""><i class=""fa fa-users""></i> ");
#nullable restore
#line 14 "C:\Users\tanji\Downloads\Compressed\Asp.Net-Core-Inventory-Order-Management-System-master\Asp.Net-Core-Inventory-Order-Management-System-master\coderush\Views\UserRole\ChangePassword.cshtml"
                                                                          Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h3>
                <div class=""box-tools pull-right"">
                    <button type=""button"" class=""btn btn-box-tool"" data-widget=""collapse"" data-toggle=""tooltip""
                            title=""Collapse"">
                        <i class=""fa fa-minus""></i>
                    </button>
                    <button type=""button"" class=""btn btn-box-tool"" data-widget=""remove"" data-toggle=""tooltip"" title=""Remove"">
                        <i class=""fa fa-times""></i>
                    </button>
                </div>
            </div>
            <div class=""box-body"">
                <div id=""Grid""></div>
            </div>
            <!-- /.box-body -->
            <div class=""box-footer"">

            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script id=""templateForm"" type=""text/template"">
    <input hidden id=""UserProfileId"" name=""UserProfileId"" value=""{{:UserProfileId}}"" />
    <input hidde");
            WriteLiteral(@"n id=""ApplicationUserId"" name=""ApplicationUserId"" value=""{{:ApplicationUserId}}"" />
    <table cellspacing=""10"">
        <tr>
            <td>
                Email
            </td>
            <td colspan=""3"">
                <input id=""Email"" name=""Email"" value=""{{:Email}}"" />
            </td>
        </tr>
        <tr>
            <td>
                First Name
            </td>
            <td>
                <input id=""FirstName"" name=""FirstName"" value=""{{:FirstName}}"" />
            </td>
            <td>
                Last Name
            </td>
            <td>
                <input id=""LastName"" name=""LastName"" value=""{{:LastName}}"" />
            </td>
        </tr>
        <tr>
            <td>
                Old Password
            </td>
            <td>
                <input id=""OldPassword"" name=""OldPassword"" value="""" />
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>
                New Password
            </td>
            <t");
            WriteLiteral(@"d>
                <input id=""Password"" name=""Password"" value="""" />
            </td>
            <td>
                Re-type Password
            </td>
            <td>
                <input id=""ConfirmPassword"" name=""ConfirmPassword"" value="""" />
            </td>
        </tr>
    </table>
</script>


");
            DefineSection("Styles", async() => {
                WriteLiteral("\n\n");
            }
            );
            WriteLiteral("\n");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"

    <script type=""text/javascript"">
        $(function () {

            var dataManager = ej.DataManager({
                url: ""/api/User"",
                adaptor: new ej.WebApiAdaptor(),
                offline: true
            });

            dataManager.ready.done(function (e) {
                $(""#Grid"").ejGrid({
                    dataSource: ej.DataManager({
                        json: e.result,
                        adaptor: new ej.remoteSaveAdaptor(),
                        updateUrl: ""/api/User/ChangePassword""
                    }),
                    toolbarSettings: {
                        showToolbar: true,
                        toolbarItems: [""edit"", ""update"", ""cancel"", ""search"", ""printGrid""]
                    },
                    editSettings: {
                        allowEditing: true,
                        allowAdding: false,
                        allowDeleting: false,
                        showDeleteConfirmDialog: true,
                        editMode: ""dialogt");
                WriteLiteral(@"emplate"",
                        dialogEditorTemplateID: ""#templateForm"",
                    },
                    isResponsive: true,
                    enableResponsiveRow: true,
                    allowSorting: true,
                    allowSearching: true,
                    allowFiltering: true,
                    filterSettings: {
                        filterType: ""excel"",
                        maxFilterChoices: 100,
                        enableCaseSensitivity: false
                    },
                    allowPaging: true,
                    pageSettings: { pageSize: 10, printMode: ej.Grid.PrintMode.CurrentPage },
                    columns: [
                        { field: ""UserProfileId"", headerText: 'Id', isPrimaryKey: true, isIdentity: true, visible: false },
                        { field: ""Email"", headerText: 'Email', validationRules: { required: true } },
                        { field: ""FirstName"", headerText: 'First Name', validationRules: { required: true } },
        ");
                WriteLiteral(@"                { field: ""LastName"", headerText: 'Last Name', validationRules: { required: false } },
                        { field: ""Password"", headerText: 'Password', validationRules: { required: true }, visible: false },
                        { field: ""ConfirmPassword"", headerText: 'Confirm Password', validationRules: { required: true }, visible: false },
                    ],
                    actionComplete: ""complete"",
                });
            });



        });
        

        function complete(args) {

            $(""#Email"").ejMaskEdit({
                inputMode: 'Text',
            });
            $(""#FirstName"").ejMaskEdit({
                inputMode: 'Text',
            });
            $(""#LastName"").ejMaskEdit({
                inputMode: 'Text',
            });
            $(""#OldPassword"").ejMaskEdit({
                inputMode: 'Password',
                validationRules: { required: true },
            });
            $(""#Password"").ejMaskEdit({
                inputMode: 'Pa");
                WriteLiteral(@"ssword',
                validationRules: { required: true },
            });
            $(""#ConfirmPassword"").ejMaskEdit({
                inputMode: 'Password',
                validationRules: { required: true },
            });

            if (args.requestType == 'beginedit') {
                $(""#"" + this._id + ""_dialogEdit"").ejDialog({ title: ""Edit Password"" });
                $(""#Email"").ejMaskEdit(""disable"");
                $(""#FirstName"").ejMaskEdit(""disable"");
                $(""#LastName"").ejMaskEdit(""disable"");
            }

            if (args.requestType == ""save"") {
                this.refreshContent();
            }

        }


    </script>
");
            }
            );
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
