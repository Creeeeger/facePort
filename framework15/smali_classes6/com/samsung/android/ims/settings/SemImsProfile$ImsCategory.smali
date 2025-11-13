.class public Lcom/samsung/android/ims/settings/SemImsProfile$ImsCategory;
.super Ljava/lang/Object;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsCategory"
.end annotation


# static fields
.field public static final whitelist RCS_SERVICE:Ljava/lang/String; = "rcs"

.field public static final whitelist VOLTE_SERVICE:Ljava/lang/String; = "volte"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
