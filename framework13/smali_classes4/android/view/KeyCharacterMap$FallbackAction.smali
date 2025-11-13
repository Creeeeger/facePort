.class public final Landroid/view/KeyCharacterMap$FallbackAction;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAction"
.end annotation


# static fields
.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static greylist-max-o sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist-max-r keyCode:I

.field public greylist-max-r metaState:I

.field private greylist-max-o next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 776
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    .line 792
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    if-nez v1, :cond_0

    .line 794
    new-instance v1, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v1}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    .local v1, "target":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_0

    .line 796
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_0
    nop

    .line 797
    .restart local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    iget-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 798
    sget v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    .line 799
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 801
    :goto_0
    monitor-exit v0

    .line 802
    return-object v1

    .line 801
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 3

    .line 806
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 807
    :try_start_0
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 808
    sget-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iput-object v2, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 809
    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 810
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    goto :goto_0

    .line 812
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 814
    :goto_0
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
