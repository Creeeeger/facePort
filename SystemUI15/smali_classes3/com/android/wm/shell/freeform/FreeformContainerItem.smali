.class public abstract Lcom/android/wm/shell/freeform/FreeformContainerItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimationCompleted:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mIconLoadCompleted:Z

.field public mIconView:Landroid/widget/ImageView;

.field public mItemType:I

.field public final mPackageName:Ljava/lang/String;

.field public mPublishCompleted:Z

.field public mShowingIcon:Landroid/graphics/drawable/Drawable;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mComponentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mComponentName:Landroid/content/ComponentName;

    :goto_0
    iput p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    return-void
.end method


# virtual methods
.method public asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTaskId()I
.end method

.method public isParentMultiInstanceItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract launch()V
.end method

.method public abstract loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V
.end method

.method public needLoading(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    return-void
.end method

.method public unsetIconLoadCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    return-void
.end method
