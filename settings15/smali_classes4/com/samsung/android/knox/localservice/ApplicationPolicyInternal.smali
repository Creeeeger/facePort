.class public abstract Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
.end method

.method public abstract isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract isApplicationStopDisabledAsUser(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
