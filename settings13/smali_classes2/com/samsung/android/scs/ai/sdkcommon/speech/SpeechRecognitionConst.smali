.class public Lcom/samsung/android/scs/ai/sdkcommon/speech/SpeechRecognitionConst;
.super Ljava/lang/Object;
.source "SpeechRecognitionConst.java"


# static fields
.field public static final VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/speech/SpeechRecognitionConst;->VERSION:Ljava/lang/Integer;

    return-void
.end method
