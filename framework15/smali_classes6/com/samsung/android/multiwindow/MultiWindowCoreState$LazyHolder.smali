.class Lcom/samsung/android/multiwindow/MultiWindowCoreState$LazyHolder;
.super Ljava/lang/Object;
.source "MultiWindowCoreState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowCoreState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState$LazyHolder;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState$LazyHolder;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
