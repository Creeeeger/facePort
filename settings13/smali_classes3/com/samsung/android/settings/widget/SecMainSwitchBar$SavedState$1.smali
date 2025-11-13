.class Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState$1;
.super Ljava/lang/Object;
.source "SecMainSwitchBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;
    .locals 1

    .line 323
    new-instance p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;
    .locals 0

    .line 327
    new-array p0, p1, [Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState$1;->newArray(I)[Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    move-result-object p0

    return-object p0
.end method
