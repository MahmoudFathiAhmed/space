part of 'apod_bloc.dart';

class ApodState extends Equatable {
  final List<Apod> apod;
  final RequestState apodState;
  final String apodMessage;

  const ApodState({
    this.apod = const [
      Apod(
          date: '2011-10-28',
          explanation: "explanation",
          hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
          mediaType: "image",
          title: "",
          url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "mediaType",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "",
        title: "title",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
      Apod(
        date: '2011-10-28',
        explanation: "explanation",
        hdUrl: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",
        mediaType: "image",
        title: "",
        url: "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png",),
    ],
    this.apodState = RequestState.loading,
    this.apodMessage = '',
  });

  ApodState copyWith({
    List<Apod>? apod,
    RequestState? apodState,
    String? apodMessage,
  }) {
    return ApodState(
      apod: apod ?? this.apod,
      apodState: apodState ?? this.apodState,
      apodMessage: apodMessage ?? this.apodMessage,
    );
  }

  @override
  List<Object?> get props => [
        apod,
        apodState,
        apodState,
      ];
}
