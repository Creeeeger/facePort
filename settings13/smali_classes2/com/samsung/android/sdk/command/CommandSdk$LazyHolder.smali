.class Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;
.super Ljava/lang/Object;
.source "CommandSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/command/CommandSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/samsung/android/sdk/command/CommandSdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/command/CommandSdk;-><init>(Lcom/samsung/android/sdk/command/CommandSdk$1;)V

    sput-object v0, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/sdk/command/CommandSdk;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/sdk/command/CommandSdk$LazyHolder;->INSTANCE:Lcom/samsung/android/sdk/command/CommandSdk;

    return-object v0
.end method
