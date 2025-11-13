.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/decor/ScreenDecorCommand;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorCommandCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/decor/ScreenDecorCommand;-><init>(Lcom/android/systemui/decor/ScreenDecorCommand$Callback;)V

    return-object v0
.end method
