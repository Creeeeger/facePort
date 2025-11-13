.class Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Click switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AspectRatioFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iput p2, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    .line 679
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$msetMaxAspectRatioPolicy(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;IZ)V

    return-void
.end method
