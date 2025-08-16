.class abstract Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/auth/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SimpleTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/auth/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;->this$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sekai/bank/ui/auth/AuthActivity;Lcom/sekai/bank/ui/auth/AuthActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
