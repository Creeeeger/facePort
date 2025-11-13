.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$MiscPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiscPolicy"
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "MiscPolicy"

.field public static final blacklist NFC_STATE_CHANGE:Ljava/lang/String; = "isNFCStateChangeAllowed"

.field public static final blacklist URI:Ljava/lang/String; = "content://com.sec.knox.provider2/MiscPolicy"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
