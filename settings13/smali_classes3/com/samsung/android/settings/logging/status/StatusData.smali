.class public Lcom/samsung/android/settings/logging/status/StatusData;
.super Ljava/lang/Object;
.source "StatusData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mStatusKey:Ljava/lang/String;

.field private mStatusValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusData"

    .line 20
    iput-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->-$$Nest$fgetmStatusValue(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->-$$Nest$fgetmStatusKey(Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Value :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/logging/status/StatusData;->mStatusValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
