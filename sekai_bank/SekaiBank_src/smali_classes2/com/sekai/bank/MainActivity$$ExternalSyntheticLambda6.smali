.class public final synthetic Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/sekai/bank/MainActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/sekai/bank/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sekai/bank/MainActivity;->lambda$setupWindowInsets$3$com-sekai-bank-MainActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
