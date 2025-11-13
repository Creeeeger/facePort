.class public final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keyboards"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCollator:Ljava/text/Collator;

.field public final mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

.field public final mKeyboardInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;",
            ">;)V"
        }
    .end annotation

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mCollator:Ljava/text/Collator;

    .line 773
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 774
    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;)I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mCollator:Ljava/text/Collator;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 762
    check-cast p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->compareTo(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;)I

    move-result p0

    return p0
.end method
