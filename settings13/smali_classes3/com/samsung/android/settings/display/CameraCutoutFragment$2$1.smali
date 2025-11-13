.class Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;
.super Ljava/lang/Object;
.source "CameraCutoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

.field final synthetic val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$2;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;->this$1:Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2$1;->val$row:Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method
