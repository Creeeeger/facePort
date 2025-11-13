.class public abstract Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public mEnforcementAdminUserId:I

.field public mLauncher:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

.field public final mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    return-void
.end method


# virtual methods
.method public abstract getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract getAdminSupportTitle()Ljava/lang/String;
.end method

.method public getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract setupLearnMoreButton(Landroid/content/Context;)V
.end method
