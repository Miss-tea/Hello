.class Lcom/sekai/bank/ui/send/SendMoneyFragment$3;
.super Ljava/lang/Object;
.source "SendMoneyFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/send/SendMoneyFragment;->loadCurrentUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "Lcom/sekai/bank/models/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 201
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {p2, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p2}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sekai/bank/models/User;

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fputcurrentUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;Lcom/sekai/bank/models/User;)V

    .line 189
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$mupdateBalanceDisplay(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p2}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget p2, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
