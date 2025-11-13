.class public final Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final hidden:Z

.field public final innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final isReversed:Z

.field public final name:Ljava/lang/String;

.field public final outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

.field public final rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    new-instance p2, Lcom/airbnb/lottie/animation/content/PolystarContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    return-object p2
.end method
