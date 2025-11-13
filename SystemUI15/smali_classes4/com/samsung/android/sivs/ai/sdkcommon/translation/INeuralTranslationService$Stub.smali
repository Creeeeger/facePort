.class public abstract Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->identifyLanguageAndGetCandidate()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez p0, :cond_1

    const/4 p0, -0x1

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    move p4, p2

    :goto_0
    if-ge p4, p1, :cond_5

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p3, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->identifyLanguageWithList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->getResourcePackPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->getLanguageDirectionStateMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_3

    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->identifyLanguage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    sget-object p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->isAvailableDirection()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->getTargetLanguageList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_3

    :pswitch_7
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->getSourceLanguageList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_3

    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->dispose()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->clear()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_4

    instance-of p4, p2, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationCallback$Stub$Proxy;

    if-eqz p4, :cond_4

    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationCallback$Stub$Proxy;

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationCallback$Stub$Proxy;

    invoke-direct {p2, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->translate()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;->refresh()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_5
    :goto_3
    return v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
