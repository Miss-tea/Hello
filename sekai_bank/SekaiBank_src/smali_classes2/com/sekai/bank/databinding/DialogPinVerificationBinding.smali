.class public final Lcom/sekai/bank/databinding/DialogPinVerificationBinding;
.super Ljava/lang/Object;
.source "DialogPinVerificationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pinButton0:Landroid/widget/Button;

.field public final pinButton1:Landroid/widget/Button;

.field public final pinButton2:Landroid/widget/Button;

.field public final pinButton3:Landroid/widget/Button;

.field public final pinButton4:Landroid/widget/Button;

.field public final pinButton5:Landroid/widget/Button;

.field public final pinButton6:Landroid/widget/Button;

.field public final pinButton7:Landroid/widget/Button;

.field public final pinButton8:Landroid/widget/Button;

.field public final pinButton9:Landroid/widget/Button;

.field public final pinButtonClear:Landroid/widget/Button;

.field public final pinButtonDelete:Landroid/widget/Button;

.field public final pinButtonSubmit:Landroid/widget/Button;

.field public final pinDot1:Landroid/view/View;

.field public final pinDot2:Landroid/view/View;

.field public final pinDot3:Landroid/view/View;

.field public final pinDot4:Landroid/view/View;

.field public final pinDot5:Landroid/view/View;

.field public final pinDot6:Landroid/view/View;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 86
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    move-object v1, p2

    .line 87
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton0:Landroid/widget/Button;

    move-object v1, p3

    .line 88
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton1:Landroid/widget/Button;

    move-object v1, p4

    .line 89
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton2:Landroid/widget/Button;

    move-object v1, p5

    .line 90
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton3:Landroid/widget/Button;

    move-object v1, p6

    .line 91
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton4:Landroid/widget/Button;

    move-object v1, p7

    .line 92
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton5:Landroid/widget/Button;

    move-object v1, p8

    .line 93
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton6:Landroid/widget/Button;

    move-object v1, p9

    .line 94
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton7:Landroid/widget/Button;

    move-object v1, p10

    .line 95
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton8:Landroid/widget/Button;

    move-object v1, p11

    .line 96
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButton9:Landroid/widget/Button;

    move-object v1, p12

    .line 97
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButtonClear:Landroid/widget/Button;

    move-object v1, p13

    .line 98
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButtonDelete:Landroid/widget/Button;

    move-object/from16 v1, p14

    .line 99
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinButtonSubmit:Landroid/widget/Button;

    move-object/from16 v1, p15

    .line 100
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot1:Landroid/view/View;

    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot2:Landroid/view/View;

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot3:Landroid/view/View;

    move-object/from16 v1, p18

    .line 103
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot4:Landroid/view/View;

    move-object/from16 v1, p19

    .line 104
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot5:Landroid/view/View;

    move-object/from16 v1, p20

    .line 105
    iput-object v1, v0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->pinDot6:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sekai/bank/databinding/DialogPinVerificationBinding;
    .locals 24

    move-object/from16 v0, p0

    .line 135
    sget v1, Lcom/sekai/bank/R$id;->pin_button_0:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 141
    sget v1, Lcom/sekai/bank/R$id;->pin_button_1:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 147
    sget v1, Lcom/sekai/bank/R$id;->pin_button_2:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 153
    sget v1, Lcom/sekai/bank/R$id;->pin_button_3:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 159
    sget v1, Lcom/sekai/bank/R$id;->pin_button_4:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 165
    sget v1, Lcom/sekai/bank/R$id;->pin_button_5:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 171
    sget v1, Lcom/sekai/bank/R$id;->pin_button_6:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 177
    sget v1, Lcom/sekai/bank/R$id;->pin_button_7:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    .line 183
    sget v1, Lcom/sekai/bank/R$id;->pin_button_8:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    .line 189
    sget v1, Lcom/sekai/bank/R$id;->pin_button_9:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    .line 195
    sget v1, Lcom/sekai/bank/R$id;->pin_button_clear:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    .line 201
    sget v1, Lcom/sekai/bank/R$id;->pin_button_delete:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    .line 207
    sget v1, Lcom/sekai/bank/R$id;->pin_button_submit:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_0

    .line 213
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_1:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 219
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_2:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 225
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_3:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 231
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_4:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 237
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_5:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 243
    sget v1, Lcom/sekai/bank/R$id;->pin_dot_6:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 249
    new-instance v1, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v3 .. v23}, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 254
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/DialogPinVerificationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/DialogPinVerificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/DialogPinVerificationBinding;
    .locals 2

    .line 122
    sget v0, Lcom/sekai/bank/R$layout;->dialog_pin_verification:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->bind(Landroid/view/View;)Lcom/sekai/bank/databinding/DialogPinVerificationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sekai/bank/databinding/DialogPinVerificationBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
