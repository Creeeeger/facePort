.class public Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures$Field;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final blacklist FEATURE_NAME:Ljava/lang/String; = "feature_name"

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "packageName"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
