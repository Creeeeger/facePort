.class Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;-><init>(Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$1;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    return-object v0
.end method
