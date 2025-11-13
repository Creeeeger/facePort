.class public Lcom/samsung/android/provider/SemKnoxPolicyContract;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/provider/SemKnoxPolicyContract$ProfilePolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$AuditLog;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$KioskMode;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$MiscPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$DeviceAccountPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$PasswordPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$PhoneRestrictionPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$KnoxCustomManagerService;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$BluetoothPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$ApplicationPolicy;,
        Lcom/samsung/android/provider/SemKnoxPolicyContract$RestrictionPolicy;
    }
.end annotation


# static fields
.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final blacklist AUTHORITY2:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final blacklist CONTENT:Ljava/lang/String; = "content://"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
