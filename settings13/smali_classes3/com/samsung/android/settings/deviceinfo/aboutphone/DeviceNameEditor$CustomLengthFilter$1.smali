.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter$1;
.super Ljava/lang/Object;
.source "DeviceNameEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter$1;->this$1:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter$1;->this$1:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->-$$Nest$fgetmDeviceNameScrollView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;)Landroid/widget/ScrollView;

    move-result-object p0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
