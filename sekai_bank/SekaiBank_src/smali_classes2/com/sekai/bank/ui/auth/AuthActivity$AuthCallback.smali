.class Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/auth/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "Lcom/sekai/bank/models/responses/AuthResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final isNewUser:Z

.field final synthetic this$0:Lcom/sekai/bank/ui/auth/AuthActivity;


# direct methods
.method public constructor <init>(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-boolean p2, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->isNewUser:Z

    return-void
.end method

.method private getErrorMessageByCode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_5

    const/16 v0, 0x193

    if-eq p1, v0, :cond_4

    const/16 v0, 0x199

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    .line 335
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_server:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_account_locked:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 332
    :cond_2
    iget-boolean p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->isNewUser:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_username_taken:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_forbidden:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 330
    :cond_5
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_invalid_credentials:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleAuthError(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->getErrorMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-static {p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 314
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/auth/AuthActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V

    .line 315
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget p2, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/responses/AuthResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V

    .line 299
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 300
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    .line 301
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 302
    iget-object p2, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/AuthResponse;

    iget-boolean v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->isNewUser:Z

    invoke-static {p2, p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->-$$Nest$mhandleAuthSuccess(Lcom/sekai/bank/ui/auth/AuthActivity;Lcom/sekai/bank/models/responses/AuthResponse;Z)V

    goto :goto_1

    .line 304
    :cond_0
    iget-object p2, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    .line 305
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 304
    :goto_0
    invoke-static {p2, p1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_2
    invoke-direct {p0, p2}, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;->handleAuthError(Lretrofit2/Response;)V

    :goto_1
    return-void
.end method
