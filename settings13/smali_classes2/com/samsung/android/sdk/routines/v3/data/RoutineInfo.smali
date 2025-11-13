.class public Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;->a:Ljava/lang/String;

    return-object p0
.end method
