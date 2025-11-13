.class public Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;
.super Ljava/lang/Object;
.source "VibPickerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternContainer"
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->index:I

    .line 124
    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->index:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->name:Ljava/lang/String;

    return-object p0
.end method
