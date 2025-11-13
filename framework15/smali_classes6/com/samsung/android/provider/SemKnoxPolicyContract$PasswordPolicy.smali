.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$PasswordPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordPolicy"
.end annotation


# static fields
.field public static final blacklist BIOMETRIC_AUTHENTICATION_ENABLED:Ljava/lang/String; = "isBiometricAuthenticationEnabled"

.field public static final blacklist BIOMETRIC_AUTHENTICATION_ENABLED_AS_USER:Ljava/lang/String; = "isBiometricAuthenticationEnabledAsUser"

.field public static final blacklist NAME2:Ljava/lang/String; = "PasswordPolicy2"

.field public static final blacklist URI2:Ljava/lang/String; = "content://com.sec.knox.provider/PasswordPolicy2"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
