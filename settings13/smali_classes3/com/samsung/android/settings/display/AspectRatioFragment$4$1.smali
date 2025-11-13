.class Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$4;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

.field final synthetic val$switchButton:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->val$switchButton:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$1;->val$switchButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
