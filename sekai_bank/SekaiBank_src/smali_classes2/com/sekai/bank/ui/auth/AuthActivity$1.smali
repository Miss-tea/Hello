.class Lcom/sekai/bank/ui/auth/AuthActivity$1;
.super Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/auth/AuthActivity;->setupTextWatchers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$1;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;Lcom/sekai/bank/ui/auth/AuthActivity-IA;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity$1;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->-$$Nest$mclearErrorForInput(Lcom/sekai/bank/ui/auth/AuthActivity;Landroid/text/Editable;)V

    return-void
.end method
