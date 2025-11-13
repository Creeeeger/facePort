.class public Lcom/samsung/android/ims/SemImsManager$IkeErrors;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeErrors"
.end annotation


# static fields
.field public static final whitelist AUTHENTICATION_FAILED:I = 0x18

.field public static final whitelist INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final whitelist INVALID_SYNTAX:I = 0x7

.field public static final whitelist MAX_CONNECTION_REACHED:I = 0x2001

.field public static final whitelist NETWORK_TOO_BUSY:I = 0x2710

.field public static final whitelist NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final whitelist NO_SUBSCRIPTION:I = 0x2328

.field public static final whitelist PDN_CONNECTION_REJECTION:I = 0x2000

.field public static final whitelist TEMPORARY_FAILURE:I = 0x2b


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
