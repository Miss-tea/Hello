.class Lcom/sekai/bank/ui/send/SendMoneyFragment$4;
.super Ljava/lang/Object;
.source "SendMoneyFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/send/SendMoneyFragment;->validateRecipient()V
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

    .line 271
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-send-SendMoneyFragment$4()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fputisValidatingRecipient(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V

    .line 307
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v2, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v1, v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v2, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v1, v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-send-SendMoneyFragment$4(Lretrofit2/Response;)V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fputisValidatingRecipient(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V

    .line 277
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v3, 0x0

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

    .line 280
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/User;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fputrecipientUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;Lcom/sekai/bank/models/User;)V

    .line 281
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetrecipientUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sekai/bank/R$color;->success_green:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0, v3}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fputrecipientUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;Lcom/sekai/bank/models/User;)V

    .line 287
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v1, Lcom/sekai/bank/R$string;->error_recipient_not_found:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 304
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/send/SendMoneyFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$4$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$4;)V

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
            "Lcom/sekai/bank/models/User;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;)V"
        }
    .end annotation

    .line 274
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/send/SendMoneyFragment$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment$4$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$4;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
