.class public final Lcom/samsung/android/settings/activekey/DedicatedAppView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

.field public final synthetic val$view:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v1, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "skipped unexpected package : "

    const-string p1, "DedicatedAppView"

    invoke-static {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView$2;Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p0, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p0, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    return-void
.end method
