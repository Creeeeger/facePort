.class public final synthetic Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    return-void
.end method


# virtual methods
.method public final onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
