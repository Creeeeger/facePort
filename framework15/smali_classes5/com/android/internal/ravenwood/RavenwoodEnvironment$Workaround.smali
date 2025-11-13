.class public Lcom/android/internal/ravenwood/RavenwoodEnvironment$Workaround;
.super Ljava/lang/Object;
.source "RavenwoodEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/ravenwood/RavenwoodEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Workaround"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isTargetSdkAtLeastQ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
