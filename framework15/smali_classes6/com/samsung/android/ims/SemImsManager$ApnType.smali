.class public Lcom/samsung/android/ims/SemImsManager$ApnType;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnType"
.end annotation


# static fields
.field public static final whitelist CBS:Ljava/lang/String; = "cbs"

.field public static final whitelist EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final whitelist IMS:Ljava/lang/String; = "ims"

.field public static final whitelist INTERNET:Ljava/lang/String; = "default"

.field public static final whitelist MMS:Ljava/lang/String; = "mms"

.field public static final whitelist XCAP:Ljava/lang/String; = "xcap"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
