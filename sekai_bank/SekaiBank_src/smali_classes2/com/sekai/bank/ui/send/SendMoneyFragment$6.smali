.class Lcom/sekai/bank/ui/send/SendMoneyFragment$6;
.super Ljava/lang/Object;
.source "SendMoneyFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/send/SendMoneyFragment;->sendMoney(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
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
        "Lcom/sekai/bank/models/Transaction;",
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

    .line 457
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-send-SendMoneyFragment$6()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V

    .line 494
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v2, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v1, v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-send-SendMoneyFragment$6(Lretrofit2/Response;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V

    .line 464
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v1, Lcom/sekai/bank/R$string;->send_success:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showSuccessSnackbar(Landroid/view/View;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$mclearForm(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    .line 468
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$mloadCurrentUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    goto :goto_1

    .line 470
    :cond_0
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 473
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_insufficient_funds:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 476
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_pin_invalid:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_3

    .line 478
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_recipient_not_found:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 491
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$6;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/Transaction;",
            ">;>;)V"
        }
    .end annotation

    .line 460
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$6;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
