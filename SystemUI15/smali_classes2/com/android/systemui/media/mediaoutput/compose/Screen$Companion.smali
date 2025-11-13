.class public final Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;-><init>()V

    return-void
.end method

.method public static toScreen(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/compose/Screen;
    .locals 2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$SettingHome;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$CastSetting;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->route:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
