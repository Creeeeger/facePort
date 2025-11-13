.class public abstract Lcom/android/systemui/log/LogBufferKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/log/LogMessageImpl$Factory;->create()Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/log/LogBufferKt;->FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;

    return-void
.end method
