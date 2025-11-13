.class public Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
.super Ljava/lang/Object;
.source "StatusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/logging/status/StatusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private mStatusKey:Ljava/lang/String;

.field private mStatusValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatusKey(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusValue(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/logging/status/StatusData;
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/logging/status/StatusData;-><init>(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)V

    return-object v0
.end method

.method public setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
    .locals 0

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method
