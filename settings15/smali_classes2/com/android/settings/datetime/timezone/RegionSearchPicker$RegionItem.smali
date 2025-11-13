.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionItem"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mItemId:J

.field public final mName:Ljava/lang/String;

.field public final mSearchKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentTime()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mItemId:J

    return-wide v0
.end method

.method public final getSearchKeys()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mSearchKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    return-object p0
.end method
