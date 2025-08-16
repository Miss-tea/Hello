.class public Lcom/sekai/bank/utils/SnackbarHelper;
.super Ljava/lang/Object;
.source "SnackbarHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSnackbar(Landroid/view/View;Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/sekai/bank/R$color;->white:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    const-class v1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sekai/bank/models/responses/ApiResponse;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 37
    sget v0, Lcom/sekai/bank/R$color;->error_red:I

    invoke-static {p0, p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showSnackbarInContext(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Lretrofit2/Response;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lretrofit2/Response<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p2

    .line 65
    :cond_0
    invoke-static {p0, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    sget v0, Lcom/sekai/bank/R$color;->error_red:I

    invoke-static {p0, p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->createSnackbar(Landroid/view/View;Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showErrorSnackbar(Landroid/view/View;Lretrofit2/Response;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lretrofit2/Response<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p2

    .line 59
    :cond_0
    invoke-static {p0, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static showInfoSnackbar(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    sget v0, Lcom/sekai/bank/R$color;->sekai_blue_accent:I

    invoke-static {p0, p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->createSnackbar(Landroid/view/View;Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private static showSnackbarInContext(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 75
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Landroid/app/Activity;

    const v0, 0x1020002

    .line 77
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->createSnackbar(Landroid/view/View;Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public static showSuccessDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget v0, Lcom/sekai/bank/R$color;->success_green:I

    invoke-static {p0, p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showSnackbarInContext(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showSuccessSnackbar(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    sget v0, Lcom/sekai/bank/R$color;->success_green:I

    invoke-static {p0, p1, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->createSnackbar(Landroid/view/View;Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
