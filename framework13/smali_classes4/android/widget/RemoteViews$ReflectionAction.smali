.class final Landroid/widget/RemoteViews$ReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionAction"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field greylist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "value"    # Ljava/lang/Object;

    .line 2048
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2049
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2050
    iput-object p5, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2051
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2053
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2054
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2057
    iget p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2122
    :pswitch_1
    sget-object p1, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2123
    goto/16 :goto_0

    .line 2118
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2119
    goto/16 :goto_0

    .line 2115
    :pswitch_3
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2116
    goto/16 :goto_0

    .line 2112
    :pswitch_4
    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2113
    goto/16 :goto_0

    .line 2109
    :pswitch_5
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2110
    goto/16 :goto_0

    .line 2100
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2101
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2103
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2104
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2105
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 2107
    goto/16 :goto_0

    .line 2092
    :pswitch_7
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2093
    goto/16 :goto_0

    .line 2089
    :pswitch_8
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2090
    goto :goto_0

    .line 2086
    :pswitch_9
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2087
    goto :goto_0

    .line 2083
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2084
    goto :goto_0

    .line 2080
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2081
    goto :goto_0

    .line 2077
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2078
    goto :goto_0

    .line 2074
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2075
    goto :goto_0

    .line 2071
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2072
    goto :goto_0

    .line 2068
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2069
    goto :goto_0

    .line 2065
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2066
    goto :goto_0

    .line 2062
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2063
    goto :goto_0

    .line 2059
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 2060
    nop

    .line 2128
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getActionTag()I
    .locals 1

    .line 2192
    const/4 v0, 0x2

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2187
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2131
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2134
    iget v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2169
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->toValue(Landroid/graphics/BlendMode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    goto/16 :goto_0

    .line 2166
    :pswitch_2
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2167
    goto/16 :goto_0

    .line 2177
    :pswitch_3
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2178
    goto/16 :goto_0

    .line 2163
    :pswitch_4
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2164
    goto :goto_0

    .line 2160
    :pswitch_5
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2161
    goto :goto_0

    .line 2157
    :pswitch_6
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    goto :goto_0

    .line 2154
    :pswitch_7
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2155
    goto :goto_0

    .line 2151
    :pswitch_8
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2152
    goto :goto_0

    .line 2148
    :pswitch_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2149
    goto :goto_0

    .line 2145
    :pswitch_a
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    goto :goto_0

    .line 2142
    :pswitch_b
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    goto :goto_0

    .line 2139
    :pswitch_c
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2140
    goto :goto_0

    .line 2136
    :pswitch_d
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2137
    nop

    .line 2182
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
