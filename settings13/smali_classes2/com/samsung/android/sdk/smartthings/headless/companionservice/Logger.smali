.class final Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;
    }
.end annotation


# static fields
.field private static sPrinter:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;


# direct methods
.method private static enrichTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibApi |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->sPrinter:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->enrichTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static setLogPrinter(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger;->sPrinter:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Logger$LogPrinter;

    return-void
.end method
