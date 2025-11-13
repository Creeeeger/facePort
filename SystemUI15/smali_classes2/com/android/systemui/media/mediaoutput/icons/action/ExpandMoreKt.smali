.class public abstract Lcom/android/systemui/media/mediaoutput/icons/action/ExpandMoreKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ExpandMore$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/ExpandMoreKt$ExpandMore$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/ExpandMoreKt$ExpandMore$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/ExpandMoreKt;->ExpandMore$delegate:Lkotlin/Lazy;

    return-void
.end method
