.class public Lcom/android/settings/password/SetupBiometricsChooseLockGeneric;
.super Lcom/android/settings/password/SetupChooseLockGeneric;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupBiometricsChooseLockGeneric$SetupBiometricsChooseLockGenericFragment;,
        Lcom/android/settings/password/SetupBiometricsChooseLockGeneric$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/password/SetupBiometricsChooseLockGeneric$SetupBiometricsChooseLockGenericFragment;

    return-object p0
.end method

.method public final isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const-class p0, Lcom/android/settings/password/SetupBiometricsChooseLockGeneric$SetupBiometricsChooseLockGenericFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
