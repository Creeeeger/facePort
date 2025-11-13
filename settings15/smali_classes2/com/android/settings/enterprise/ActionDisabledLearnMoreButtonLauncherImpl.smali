.class public final Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;
.super Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mActivity:Landroid/app/Activity;

    const-string p1, "builder cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
