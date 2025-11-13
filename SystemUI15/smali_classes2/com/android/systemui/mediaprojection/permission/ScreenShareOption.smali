.class public final Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mode:I

.field public final spinnerDisabledText:Ljava/lang/String;

.field public final spinnerText:I

.field public final warningText:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    iput p2, p0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->spinnerText:I

    iput p3, p0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->warningText:I

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->spinnerDisabledText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;-><init>(IIILjava/lang/String;)V

    return-void
.end method
