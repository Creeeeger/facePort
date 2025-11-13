.class public Lcom/samsung/android/build/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# static fields
.field public static final blacklist ENG:Z = false

.field public static final blacklist PROJECT_NAME:Ljava/lang/String; = "r12s"

.field public static final blacklist SEC_FACTORY_BUILD:Z = false

.field public static final blacklist TARGET_BUILD_VARIANT:Ljava/lang/String; = "user"

.field public static final blacklist TARGET_PRODUCT:Ljava/lang/String; = "r12sxxx"

.field public static final blacklist USER:Z = true

.field public static final blacklist USERDEBUG:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist isProjectName(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "r12s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final blacklist isTargetBuildVariant(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final blacklist isTargetProduct(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "r12sxxx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
