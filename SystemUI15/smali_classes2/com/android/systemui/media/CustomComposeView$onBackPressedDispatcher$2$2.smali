.class public final Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;

    invoke-direct {v0}, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;->INSTANCE:Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "onHasEnabledCallbacksChanged() - "

    const-string v0, "CustomComposeView"

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
