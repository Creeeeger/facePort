.class public final synthetic Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/EntityHeaderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/widget/EntityHeaderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->startAppInfoSettings(Ljava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method
