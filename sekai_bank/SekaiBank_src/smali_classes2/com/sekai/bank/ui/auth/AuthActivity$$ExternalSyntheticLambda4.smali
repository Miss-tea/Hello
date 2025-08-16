.class public final synthetic Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/ui/auth/AuthActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda4;->f$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda4;->f$0:Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->lambda$updateUIForMode$3$com-sekai-bank-ui-auth-AuthActivity()V

    return-void
.end method
