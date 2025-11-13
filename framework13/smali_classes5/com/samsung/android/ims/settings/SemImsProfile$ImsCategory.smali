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
.field public static final blacklist RCS_SERVICE:Ljava/lang/String; = "rcs"

.field public static final blacklist VOLTE_SERVICE:Ljava/lang/String; = "volte"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
