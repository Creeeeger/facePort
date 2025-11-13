.class public abstract Lcom/android/internal/flags/CoreFlags;
.super Ljava/lang/Object;
.source "CoreFlags.java"


# static fields
.field public static blacklist BOOL_FLAG:Landroid/flags/BooleanFlag;

.field public static blacklist DYN_FLAG:Landroid/flags/DynamicBooleanFlag;

.field public static blacklist OFF_FLAG:Landroid/flags/FusedOffFlag;

.field public static blacklist ON_FLAG:Landroid/flags/FusedOnFlag;

.field private static final blacklist sKnownFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    const-string v0, "bool_flag"

    const/4 v1, 0x0

    const-string v2, "core"

    invoke-static {v2, v0, v1}, Lcom/android/internal/flags/CoreFlags;->booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->BOOL_FLAG:Landroid/flags/BooleanFlag;

    const-string/jumbo v0, "off_flag"

    invoke-static {v2, v0}, Lcom/android/internal/flags/CoreFlags;->fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->OFF_FLAG:Landroid/flags/FusedOffFlag;

    const-string/jumbo v0, "on_flag"

    invoke-static {v2, v0}, Lcom/android/internal/flags/CoreFlags;->fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->ON_FLAG:Landroid/flags/FusedOnFlag;

    const-string v0, "dyn_flag"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/android/internal/flags/CoreFlags;->dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/internal/flags/CoreFlags;->DYN_FLAG:Landroid/flags/DynamicBooleanFlag;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;
    .locals 5

    invoke-static {p0, p1, p2}, Landroid/flags/FeatureFlags;->booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;

    move-result-object v0

    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static blacklist dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;
    .locals 5

    invoke-static {p0, p1, p2}, Landroid/flags/FeatureFlags;->dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;

    move-result-object v0

    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static blacklist fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;
    .locals 5

    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;

    move-result-object v0

    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    const-string/jumbo v3, "false"

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static blacklist fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .locals 5

    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object v0

    sget-object v1, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    new-instance v2, Landroid/flags/SyncableFlag;

    const-string/jumbo v3, "true"

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static blacklist getCoreFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    return-object v0
.end method

.method public static blacklist isCoreFlag(Landroid/flags/SyncableFlag;)Z
    .locals 4

    sget-object v0, Lcom/android/internal/flags/CoreFlags;->sKnownFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/SyncableFlag;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
