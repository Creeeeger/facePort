.class public final Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->mAppearance:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyLightsOutNotifController;->updateLightsOutView()V

    return-void
.end method
