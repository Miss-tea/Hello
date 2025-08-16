.class Lcom/sekai/bank/ui/pin/PinActivity$1;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/pin/PinActivity;->verifyPin(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/pin/PinActivity;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/pin/PinActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-pin-PinActivity$1()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 271
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget v1, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-pin-PinActivity$1(Lretrofit2/Response;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 241
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fgetmode(Lcom/sekai/bank/ui/pin/PinActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fgetmode(Lcom/sekai/bank/ui/pin/PinActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "verify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-class v1, Lcom/sekai/bank/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-virtual {v0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->finish()V

    goto :goto_1

    .line 244
    :cond_1
    :goto_0
    const-string p1, "PinActivity"

    const-string v0, "PIN verification successful, setting result and finishing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fgetenteredPin(Lcom/sekai/bank/ui/pin/PinActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->finish()V

    goto :goto_1

    .line 257
    :cond_2
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 259
    const-string p1, "Invalid PIN"

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0, p1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

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
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 269
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance p2, Lcom/sekai/bank/ui/pin/PinActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/pin/PinActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$1;)V

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 238
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$1;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/pin/PinActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$1;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
