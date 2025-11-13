.class public final synthetic Lcom/android/settings/display/NightDisplaySettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/NightDisplaySettings;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/NightDisplaySettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/NightDisplaySettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iput p2, p0, Lcom/android/settings/display/NightDisplaySettings$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/display/NightDisplaySettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/NightDisplaySettings;

    iget p0, p0, Lcom/android/settings/display/NightDisplaySettings$$ExternalSyntheticLambda0;->f$1:I

    sget-object v0, Lcom/android/settings/display/NightDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p2

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z

    :goto_0
    return-void
.end method
