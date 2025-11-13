.class public final synthetic Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SystemUIService;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SystemUIService;

    iget-object p0, p0, Lcom/android/systemui/SystemUIService;->mLogBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Throwable;)V

    return-void
.end method
